module PC (clk, reset, PC_in, PC_out);

input clk, reset;
input [31:0] PC_in;

output reg[31:0] PC_out;

always@(posedge clk) begin
	if(reset == 0)
		PC_out = 32'b0;
	else
		PC_out = PC_in;
		

end 
endmodule