module ROM ( address, clock, out);

input [31:0] address;
input clock;
output reg [31:0] out;


always @(address)
	begin
	case(address)
	8'd 0: out = 32'h00450693;
	8'd 4: out = 32'h00100713;
	
	//Outer Loop
	8'd 8: out = 32'h00b76463;
	
	//Exit Outer Loop
	8'h c: out = 32'h00008067;
	
	//Continue Outer Loop
	8'd 10: out = 32'h0006a803;
	8'd 14: out = 32'h00068613;
	8'd 18: out = 32'h00070793;
	
	//Inner Loop
	8'h 2c: out = 32'hffc62883;
	8'd 20: out = 32'h01185a63;
	8'd 24: out = 32'h01162023;
	8'd 28: out = 32'hfff78793;
	8'h 2c: out = 32'hffc60613;
	8'd 30: out = 32'hfe0796e3;
	
	//Exit Inner Loop
	8'd 34: out = 32'h00279793;
	8'd 38: out = 32'h00f507b3;
	8'h 3c: out = 32'h0107a023;
	8'd 40: out = 32'h00170713;
	8'd 44: out = 32'h00468693;
	8'd 48: out = 32'hfc1ff06f;
	
	
endcase

end
	
endmodule