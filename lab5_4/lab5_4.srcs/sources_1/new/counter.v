`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 02:54:10 PM
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


module counter(input clk, input clear, output [7:0] Q);
        dff d0 (clk, clear, ~Q[0], Q[0]);
        dff d1 (~Q[0], clear, ~Q[1], Q[1]);
        dff d2 (~Q[1], clear, ~Q[2], Q[2]);
        dff d3 (~Q[2], clear, ~Q[3], Q[3]);
        dff d4 (~Q[3], clear, ~Q[4], Q[4]);
        dff d5 (~Q[4], clear, ~Q[5], Q[5]);
        dff d6 (~Q[5], clear, ~Q[6], Q[6]);
        dff d7 (~Q[6], clear, ~Q[7], Q[7]);        
endmodule
