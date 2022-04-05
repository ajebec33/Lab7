module Top_Level_Testbench;

reg clk, reset;

wire [4:0] RD, RS1, RS2;
wire [11:0] IMM;

Top_Level dut(.clk(clk), .reset(reset), .RD(RD), .RS1(RS1), .RS2(RS2), .IMM(IMM));

initial begin
	
	clk = 0;
	reset = 0;
	#50
	clk = 1;
	#50
	reset = 1;
	clk = 0;
	#50
	clk = 1;
	#50
	clk = 1;
end

endmodule
