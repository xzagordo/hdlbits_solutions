module top_module (input a, input b, input c, output out);

wire out1;
assign out = ~out1;

andgate inst1 (out1, a, b, c, 1, 1);

endmodule
