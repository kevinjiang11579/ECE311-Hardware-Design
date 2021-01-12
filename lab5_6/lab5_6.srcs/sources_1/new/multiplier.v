
module multiplier(a,b,res);
  input a,b;
  output res;
  wire [2:0] a;
  wire [2:0] b;
  wire [5:0] res;
  wire [3:0] r1, r2;
  wire [2:0] r3;
  wire [3:0] i1;
   
  assign r1[0]=a[0]&b[0];
  assign r1[1]=a[1]&b[0];
  assign r1[2]=a[2]&b[0];
  assign r2[0]=a[0]&b[1];
  assign r2[1]=a[1]&b[1];
  assign r2[2]=a[2]&b[1];
  assign r3[0]=a[0]&b[2];
  assign r3[1]=a[1]&b[2];
  assign r3[2]=a[2]&b[2];
  
  assign r1[3]=1'b0;
  
  assign res[0]=r1[0];
  
  adder a1(r1[3:1],r2, i1[2:0],i1[3],1'b0);
  assign res[1]=i1[0];
  adder a2(i1[3:1],r3,res[4:2],res[5],1'b0);
endmodule