module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

reg cin = 1'b0;
reg cout1, cout2;
wire [15:0] alo, blo, out1;
wire [31:16] ahi, bhi, out2;

add16 inst1 (
.cin(cin),
.a(alo),
.b(blo),
.cout(cout1),
.sum(out1)
);

add16 inst2 (
.cin(cout1),
.a(ahi),
.b(bhi),
.cout(cout2),
.sum(out2)
);

assign alo [15:0] = a [15:0];
assign blo [15:0] = b [15:0];
assign ahi [31:16] = a [31:16];
assign bhi [31:16] = b [31:16];
assign sum [15:0] = out1 [15:0];
assign sum [31:16] = out2 [31:16];
endmodule
