module Top_Level(clk, reset, RD, RS1, RS2, IMM);

// reset = 0 and clk = 1 works but reset = clk = 0 doesn't 

input clk, reset;

output [4:0] RD, RS1, RS2;
output [11:0] IMM;


wire [31:0] PC_new_addy;
wire [31:0] PC_new_addy4;
wire [31:0] instr;


PC unit0 (clk, reset, PC_new_addy4, PC_new_addy);

PCAdder unit1 (clk, reset, PC_new_addy, PC_new_addy4);


ROM unit2 (PC_new_addy, clk, instr);

ID unit3 (instr , RD, RS1, RS2, IMM);

endmodule