module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);

reg [7:0] in_final;

always @(posedge clk) begin
in_final <= in;
anyedge <= in ^ in_final;
end

endmodule
