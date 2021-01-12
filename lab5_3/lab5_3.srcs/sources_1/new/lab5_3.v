`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 08:53:48 PM
// Design Name: 
// Module Name: lab5_3
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


/*module lab5_3(input clk, input reset_n, input enable, output reg [7:0] Q);
    always @(negedge clk)
        if(!reset_n)
        begin
            Q[0] <= 1'b0;
            Q[1] <= 1'b0;
            Q[2] <= 1'b0;
            Q[3] <= 1'b0;
            Q[4] <= 1'b0;
            Q[5] <= 1'b0;
            Q[6] <= 1'b0;
            Q[7] <= 1'b0;
        end
        else if (enable)
        begin
            
            Q[7] = (enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4] & Q[5] & Q[6]) ? ~Q[7] : Q[7];
            Q[6] = (enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4] & Q[5]) ? ~Q[6] : Q[6];
            Q[5] = (enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4]) ? ~Q[5] : Q[5];
            Q[4] = (enable & Q[0] & Q[1] & Q[2] & Q[3]) ? ~Q[4] : Q[4];
            Q[3] = (enable & Q[0] & Q[1] & Q[2]) ? ~Q[3] : Q[3];
            Q[2] = (enable & Q[0] & Q[1]) ? ~Q[2] : Q[2];
            Q[1] = (enable & Q[0]) ? ~Q[1] : Q[1];
            Q[0] = (enable) ? ~Q[0]: Q[0]; 
        end
endmodule*/


module tff(input clk, input reset_n, input T, output reg [0:0]Q);
    always @(negedge clk)
        if(!reset_n)
            Q <= 1'b0;
        else if (T)
            Q <= ~Q;
endmodule