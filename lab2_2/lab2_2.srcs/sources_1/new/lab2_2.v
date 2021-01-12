`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 11:26:56 AM
// Design Name: 
// Module Name: lab2_2
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
module lab2_2(
    i1, i2, addr, muxout
    );
    input wire [1:0]i1;
    input wire [1:0]i2;
    input wire [0:0]addr;
    output wire [1:0]muxout;
        assign #3 muxout[0]=addr? i2[0]:i1[0];
        assign #3 muxout[1]=addr? i2[1]:i1[1];
endmodule
