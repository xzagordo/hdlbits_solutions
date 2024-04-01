module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

wire [31:0] bxor;
wire cout1;

add16 adder1 (.a(a[15:0]), .b(bxor[15:0]), .cin(sub), .cout(cout1), .sum(sum[15:0]) );
add16 adder2 (.a(a[31:16]), .b(bxor[31:16]), .cin(cout1), .sum(sum[31:16]));

assign bxor = {32{sub}}^b;
endmodule
