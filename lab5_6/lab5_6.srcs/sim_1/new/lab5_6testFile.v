module lab5_6testFile;
  reg [2:0] a;
  reg [2:0] b;
  wire [5:0] res;
  multiplier m1(.a(a),.b(b),.res(res));
  initial
  begin
    a=3'b000;
    b=3'b000;
    #5 {a,b}=6'b100111;
  end
endmodule