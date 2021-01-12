module top(input clk, reset,
            output [31:0] writedata, dataadr,
            output memwrite, input [4:0] regaddr, input [1:0] datasection, output [7:0] outdata);
    wire [31:0] pc, instr, readdata;
    // instantiate processor and memories
    mips mips(clk, reset, pc, instr, memwrite, dataadr,
                writedata, readdata, regaddr, datasection, outdata);
    imem imems(pc[7:2], instr);
    dmem dmems(clk, memwrite, dataadr, writedata, readdata);
endmodule