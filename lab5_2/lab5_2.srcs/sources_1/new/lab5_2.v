`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 12:44:36 PM
// Design Name: 
// Module Name: lab5_2
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


module lab5_2(input clk, input shiftin, input [3:0] parallelin, input load, input shiftenable,
output shiftout, output [3:0] regcontent);
    reg [3:0] shiftreg;
    
always @(posedge clk)
    if (load)
        shiftreg <= parallelin;
    else if (shiftenable)
        shiftreg <= {shiftreg[2:0], shiftin};
    assign shiftout = shiftreg[3];
    assign regcontent = shiftreg;
    
endmodule
