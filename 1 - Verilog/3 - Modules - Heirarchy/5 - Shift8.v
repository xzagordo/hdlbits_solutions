module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

wire [7:0] dff12, dff23, dff3m, moutput;

my_dff8 inst1 (
.clk(clk),
.d(d),
.q(dff12)
);

my_dff8 inst2 (
.clk(clk),
.d(dff12),
.q(dff23)
);

my_dff8 inst3 (
.clk(clk),
.d(dff23),
.q(dff3m)
);

always @(*) 
begin
case(sel)
2'b00 : moutput= d;
2'b01 : moutput = dff12;
2'b10 : moutput = dff23;
2'b11 : moutput = dff3m;
endcase
end

assign q = moutput;
endmodule