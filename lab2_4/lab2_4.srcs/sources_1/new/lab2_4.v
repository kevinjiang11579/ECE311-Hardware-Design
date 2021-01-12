`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 11:11:04 AM
// Design Name: 
// Module Name: lab2_4
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


module lab2_4(
    i1,
    i2,
    i3,
    addr,
    muxout
    );
    input wire [1:0] i1;
    input wire [1:0] i2;
    input wire [1:0] i3;
    input wire [1:0] addr;
    //What are the output ports.
    output wire [1:0] muxout;
    //Internal variables.
    reg [1:0] muxout;

    //Always block - the statements inside this block are executed when the given sensitivity list 
    //is satidfied. for example in this case the block is executed when any changes occur in the three signals 
    //named 'Data_in_0','Data_in_1' or 'sel'.
    always @(i1,i2, i3, addr)
    begin
    if(addr[1] == 0)
        begin
            if(addr[0] == 0)
                begin
                    muxout[0] = i1[0];  //when select signal to the mux is low
                    muxout[1] = i1[1];  //when select signal to the mux is low
                end
            else
                begin
                    muxout[0] = i2[0];  //when select signal to the mux is low
                    muxout[1] = i2[1];  //when select signal to the mux is low
                end
        end
    else
        begin
            if(addr == 0)
                begin
                    muxout[0] = i3[0];  //when select signal to the mux is low
                    muxout[1] = i3[1];  //when select signal to the mux is low
                end
            else
                begin
                    muxout[0] = i3[0];  //when select signal to the mux is low
                    muxout[1] = i3[1];  //when select signal to the mux is low
                end
        end
       
    end
   
    

endmodule
