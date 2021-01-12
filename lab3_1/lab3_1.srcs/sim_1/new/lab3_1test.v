`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 12:21:59 PM
// Design Name: 
// Module Name: lab3_1test
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


module lab3_1test;
    reg [3:0]a;
    reg [3:0]b;
    reg [0:0]cin;
    wire [0:0]cout;
    wire [3:0]s;
    lab3_1 DUT (.a(a), .b(b), .cin(cin), .cout(cout), .s(s));
    initial
    begin
    a = 0; b = 0; cin = 0;
    #10 a = 1;
    #10 b = 1; a = 0;
    #10 a = 1;
    #10 cin = 1; a = 0; b = 0;
    #10 a = 1;
    #10 b = 1; a = 0;
    #10 a = 1;
    #10;
    end
endmodule
