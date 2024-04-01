module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire couts, cout1, cout2; 
wire [15:0] sums, sum1, sum2;
wire [31:16] muxout;

add16 addselect (.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(couts), .sum(sums[15:0]));
add16 addzero (.a(a[31:16]), .b(b[31:16]), .cin(0), .cout(cout1), .sum(sum1[15:0]));
add16 addone (.a(a[31:16]), .b(b[31:16]), .cin(1), .cout(cout2), .sum(sum2[15:0]));

always @(couts, sum1, sum2)
begin
case (couts)
1'b0 : muxout = sum1;
1'b1 : muxout = sum2;
endcase
end

assign sum = {muxout[31:16],sums[15:0]};
endmodule
