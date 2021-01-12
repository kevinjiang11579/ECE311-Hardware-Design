`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 03:43:37 PM
// Design Name: 
// Module Name: counter
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


module counter(input clk, input clear, output reg [2:0] out);
        wire [2:0] Q;
        dff d0 (clk, clear, ~Q[0], Q[0]);
        dff d1 (~Q[0], clear || (out ==2), ~Q[1], Q[1]);
        dff d2 (~Q[1], clear || (out ==2), ~Q[2], Q[2]);
        always @(posedge clk)
        begin
            case ({Q[2],Q[1],Q[0]})
                3'b000 : out <= 3'b000;
                3'b001 : out <= 3'b001;
                3'b010 : out <= 3'b011;
                3'b011 : out <= 3'b101;
                3'b100 : out <= 3'b111;
                3'b101 : out <= 3'b010;
            endcase
        end
endmodule
