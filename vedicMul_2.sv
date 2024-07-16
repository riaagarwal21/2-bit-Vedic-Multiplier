`include "halfAdder.sv"

module vedicMul_2(m,a,b);
  
  //Input Declaration
  input [1:0] a, b;
  
  //Output Declaration
  output [3:0] m;
  
  //interim wires
  wire w1;
  wire w2;
  wire w3;
  wire c1;
  
  //Logic
  assign m[0] = a[0] && b[0];
  assign w1 = a[1] && b[0];
  assign w2 = a[0] && b[1];
  halfAdder u1(.sum(m[1]),.carry(c1),.a(w1),.b(w2));
  assign w3 = a[1] && b[1];
  halfAdder u2(.sum(m[2]),.carry(m[3]),.a(w3),.b(c1));
  
endmodule
