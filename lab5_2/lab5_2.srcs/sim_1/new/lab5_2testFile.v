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
    reg shiftin;
    reg shiftenable;
    reg load;
    reg [3:0] parallelin;
    
    wire shiftout;
    wire [3:0] regcontent;
    
    integer i;
    
    lab5_2 dut(.clk(clk), .shiftin(shiftin), .shiftenable(shiftenable), .load(load), .parallelin(parallelin), .shiftout(shiftout), .regcontent(regcontent));
    
    always #1 clk = !clk ;
    
    initial
        begin
            clk = 0;
            shiftenable = 0;
            load = 1;
            parallelin = 0;
            shiftin = 0;
            for (i = 0; i < 16; i = i + 1)
                #5 parallelin = i;
            #10;
            clk = 0;
            shiftenable = 1;
            load = 0;
            parallelin = 0;
            shiftin = 1;
            for (i = 0; i < 16; i = i + 1)
            begin
                #5 parallelin = i;
                #5 shiftin = !shiftin;
            end
            #10;
            clk = 0;
            shiftenable = 0;
            load = 1;
            parallelin = 0;
            shiftin = 1;
            for (i = 0; i < 16; i = i + 1)
                #5 parallelin = i;
            #10;
         end    
endmodule
