module PCAdder(clk, reset, PC_old, PC_new);

input clk,reset;
input [31:0] PC_old;

output reg [31:0] PC_new;

always@(posedge clk)begin
	if (reset == 0)
		PC_new = 32'b0;
	else
		PC_new = PC_old + 32'b100;
end
endmodule