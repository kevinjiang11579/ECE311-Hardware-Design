`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 11:51:37 AM
// Design Name: 
// Module Name: lab3_1
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


module lab3_1(
    a, b, cin, s, cout
    );
    input wire [3:0]a;
    input wire [3:0]b;
    input wire [0:0]cin;
    output wire [3:0]s;
    output wire [0:0]cout;
        assign {cout,s} = a + b + cin;
endmodule
