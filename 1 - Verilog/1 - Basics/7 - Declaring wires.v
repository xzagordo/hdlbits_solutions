`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

wire ab_and, cd_and, or_out;

assign ab_and = a&b;
assign cd_and = c&d;
assign or_out = ab_and|cd_and;

assign out = or_out;
assign out_n = ~or_out;
endmodule
