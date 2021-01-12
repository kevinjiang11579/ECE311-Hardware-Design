`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 09:52:35 AM
// Design Name: 
// Module Name: lab5_4
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


module dff(input clk, input clear, input D, output reg Q);
        always @(posedge clk or posedge clear)
        if (clear)
        begin
            Q <= 1'b0;
        end
        else
        begin
            Q <= D;
        end
endmodule
