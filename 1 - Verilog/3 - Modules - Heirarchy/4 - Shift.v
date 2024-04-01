module top_module ( input clk, input d, output q );

wire dff12;
wire dff23;

my_dff inst1 (
.clk(clk),
.d(d),
.q(dff12)
);

my_dff inst2 (
.clk(clk),
.d(dff12),
.q(dff23)
);

my_dff inst3 (
.clk(clk),
.d(dff23),
.q(q)
);

endmodule
