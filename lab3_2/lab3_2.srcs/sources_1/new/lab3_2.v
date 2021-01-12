`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2019 11:07:56 AM
// Design Name: 
// Module Name: lab3_2
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


module lab3_2(
    a, b, cin, s, cout,
    );
    input wire [3:0]a;
    input wire [3:0]b;
    input wire [0:0]cin;
    wire [3:0]p;
    wire [3:0]g;
    output wire [3:0]s;
    wire [2:0]c;
    output wire [0:0]cout;
        assign {p[0]} = a[0] + b[0];
        assign {p[1]} = a[1] + b[1];
        assign {p[2]} = a[2] + b[2];
        assign {p[3]} = a[3] + b[3];
        assign {g[0]} = a[0] * b[0];
        assign {g[1]} = a[1] * b[1];
        assign {g[2]} = a[2] * b[2];
        assign {g[3]} = a[3] * b[3];
        assign {c[0]} = g[0] + (p[0] * cin);
        assign {c[1]} = g[1] + (p[1] * c[0]); 
        assign {c[2]} = g[2] + (p[2] * c[1]);
        assign {cout} = g[3] + (p[3] * c[2]);
        assign {s[0]} = p[0] + cin;
        assign {s[1]} = p[1] + c[0]; 
        assign {s[2]} = p[2] + c[1]; 
        assign {s[3]} = p[3] + c[2]; 
endmodule
