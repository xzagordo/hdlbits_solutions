module top_module (input x, input y, output z);

wire aorb, andb;

assign aorb = ((x^y) & x)|(~(x^y));
assign andb = ((x^y) & x)&(~(x^y));
assign z = aorb^andb;
endmodule
