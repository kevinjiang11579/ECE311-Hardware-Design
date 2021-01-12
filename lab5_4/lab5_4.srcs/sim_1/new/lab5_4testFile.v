`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 11:26:24 AM
// Design Name: 
// Module Name: lab5_1testFile
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


module lab5_4testFile;

    reg clk;
    reg clear;
    wire [7:0] Q;
    
    counter dut(.clk(clk), .clear(clear), .Q(Q));
    
    always #1 clk = !clk ;
    
    initial
        begin
            clk = 1;
            clear = 1;
            #5;
            clear = 0;
            #495;
         end    
endmodule

