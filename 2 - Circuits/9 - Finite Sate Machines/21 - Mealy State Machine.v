module top_module (
input clk,
input aresetn,
input x,
output z
);

localparam [1:0] idle = 0, one = 1, one_zero = 2;
reg [1:0] state, next;

always @(*) begin
	case (state)
		idle : begin
				next = (x) ? one : idle;
				z = 0;
				end
		one : begin
				next = (x) ? one : one_zero;
				z = 0;
				end
		one_zero : begin
					if (x) begin
						next = one;
							z = 1;
						end
					else begin
						next = idle;
						z = 0;
					end
					end
					endcase
					
					end
		always @(posedge clk or negedge aresetn) begin
			if (~aresetn) state <= idle;
			else state <= next;
		end
	endmodule