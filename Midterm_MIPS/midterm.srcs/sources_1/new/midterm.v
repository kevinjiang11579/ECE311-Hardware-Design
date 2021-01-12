`timescale 1ns / 1ps

module mips(input clk, input reset, output [31:0] pc,
        input [31:0] instr,
        output memwrite,
        output [31:0] aluout, writedata,
        input [31:0] readdata, input [4:0] regaddr, input [1:0] datasection, output [7:0] outdata);
wire memtoreg, alusrc, regdst, regwrite, jump, pcsrc, zero;
wire [2:0] alucontrol;
wire [31:0] regout;
controller c(instr[31:26], instr[5:0], zero,
        memtoreg, memwrite, pcsrc,
        alusrc, regdst, regwrite, jump,
        alucontrol);
datapath dp(clk, reset, memtoreg, pcsrc,
        alusrc, regdst, regwrite, jump,
        alucontrol,
        zero, pc, instr,
        aluout, writedata, readdata, regaddr, regout);
mux4 regval(datasection, regout, outdata);
endmodule