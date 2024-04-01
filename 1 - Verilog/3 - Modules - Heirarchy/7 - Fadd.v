module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire w1, w2;

add16 adderlo (.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(w1), .sum(sum[15:0]));

add16 adderhi (.a(a[31:16]), .b(b[31:16]), .cin(w1), .cout(w2), .sum(sum[31:16]));

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

assign sum = a^b^cin;
assign cout = (a&b)|(a&cin)|(b&cin);

endmodule
