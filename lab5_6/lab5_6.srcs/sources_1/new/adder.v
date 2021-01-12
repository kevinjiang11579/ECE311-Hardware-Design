module adder(input a, input b, output [2:0] s, output cout, input cin);
wire [2:0] a, b;
wire cin;

  reg [2:0] s;
  reg cout;
  always @ (a or b or cin)
  begin
    {cout,s}=a+b+cin;
  end

endmodule