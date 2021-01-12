module imptop(input clk, reset,
             input [4:0] regaddr, input [1:0] datasection, output [7:0] outdata);
    wire [31:0] pc, instr, readdata;
    wire [31:0] memwrite, dataadr, writedata;
    // instantiate processor and memories
    mips mips(clk, reset, pc, instr, memwrite, dataadr,
                writedata, readdata, regaddr, datasection, outdata);
    imem imem(pc[7:2], instr);
    dmem dmem(clk, memwrite, dataadr, writedata, readdata);
endmodule