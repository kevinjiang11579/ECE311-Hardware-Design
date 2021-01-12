`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2019 11:28:48 AM
// Design Name: 
// Module Name: lab2
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


module lab2(

    i1, i2, addr, muxout
    );
    
    input wire [1:0]i1;
    input wire [1:0]i2;
    input wire [0:0]addr;
    wire [0:0]notaddr;
    wire [1:0]out1;
    wire [1:0]out2;
    output wire [1:0]muxout;
    
    not(notaddr, addr);
    and(out1[0], i1[0], addr);
    and(out1[1], i1[1], addr);
    and(out2[0], i2[0], notaddr);
    and(out2[1], i2[1], notaddr);
    or(muxout[0], out1[0], out2[0]);
    or(muxout[1], out1[1], out2[1]);

    
endmodule
