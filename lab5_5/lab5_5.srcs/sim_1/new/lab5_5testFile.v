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


module lab5_5testFile;

    reg clk;
    reg clear;
    wire [2:0] out;
    counter dut(.clk(clk), .clear(clear), .out(out));
    
    always #10 clk = !clk ;
    
    initial
        begin
            clk = 1;
            clear = 1;
            #5;
            clear = 0;
            #200;
         end    
endmodule

