module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

int i;
reg [7:0] in_queue;

always @(posedge clk) begin
	for (i = 0; i < 8; i = i + 1) begin
		if(in_queue[i] != in[i] && in[i] == 1) begin
			pedge[i] = 1;
		end
		else begin
			pedge[i] = 0;
		end
		in_queue[i] = in[i];
	end
end

endmodule
