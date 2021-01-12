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


module lab5_1testFile;

    reg clk;
    reg enable;
    reg reset_n;
    wire [7:0] Q;
    
    lab5_3 dut(.clk(clk), .enable(enable), .reset_n(reset_n), .Q(Q));
    
    always #1 clk = !clk ;
    
    initial
        begin
            clk = 1;
            enable = 0;
            reset_n = 0;
            #5;
            clk = 1;
            enable = 1;
            reset_n = 1;
            #495;
         end    
endmodule

