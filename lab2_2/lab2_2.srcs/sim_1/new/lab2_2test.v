`timescale 1ns / 1ps

module lab2_2test;
    reg [1:0]a;
    reg [1:0]b;
    reg [0:0]cin;
    wire [1:0]cout;
    lab2_2 DUT (.i1(a), .i2(b), .addr(cin), .muxout(cout));
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