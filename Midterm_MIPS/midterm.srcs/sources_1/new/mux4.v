module mux4(input [1:0] datasection, input [31:0] regdata, output reg [7:0] outdata);
    always @(*)
    begin
        case(datasection)
            2'b00:
                outdata <= regdata[7:0];
            2'b01:
                outdata <= regdata[15:8];
            2'b10:
                outdata <= regdata[23:16];
            2'b11:
                outdata <= regdata[31:24];
        endcase
    end
endmodule
