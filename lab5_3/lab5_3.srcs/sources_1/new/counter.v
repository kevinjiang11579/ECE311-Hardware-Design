`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 05:53:59 PM
// Design Name: 
// Module Name: counter
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


module counter(input clk, input reset_n, input enable, output reg [7:0]Q);
    tff t0 (clk, reset_n, enable, Q[0]);
    tff t1 (clk, reset_n, enable & Q[0] & Q[1], Q[1]);
    tff t2 (clk, reset_n, enable & Q[0] & Q[1] & Q[2] , Q[2]);
    tff t3 (clk, reset_n, enable & Q[0] & Q[1] & Q[2] & Q[3], Q[3]);
    tff t4 (clk, reset_n, enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4], Q[4]);
    tff t5 (clk, reset_n, enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4] & Q[5], Q[5]);
    tff t6 (clk, reset_n, enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4] & Q[5] & Q[6], Q[6]);
    tff t7 (clk, reset_n, enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4] & Q[5] & Q[6] & Q[7], Q[7]);
endmodule
