module ID(instructions , rd, rs1, rs2, imm);

input [31:0] instructions;

output [4:0] rd, rs1, rs2;
output [11:0] imm;

assign rd = instructions[11:7];
assign rs1 = instructions[19:15];
assign rs2 = instructions[24:20];
assign imm = instructions[31:20];


endmodule


