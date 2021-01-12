`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2019 09:20:52 PM
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu(input [31:0] A, input [31:0] B, input [2:0] f,
            output reg [31:0] Y, output reg zero);
    always @(*)
    begin
        case(f)
          3'b000:
            Y <= A & B;
          3'b001:
            Y <= A | B;
          3'b010:
            Y <= A + B;
          3'b100:
            Y <= A & (~B);
          3'b101:
            Y <= A | (~B);
          3'b110:
            Y <= A - B;
          3'b111:
            Y <= (A < B) ? 1:0;
         endcase
         zero <= (Y == 0) ? 1:0;
    end
endmodule
