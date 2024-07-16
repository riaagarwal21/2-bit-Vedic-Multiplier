module halfAdder(sum,carry,a,b);
  
  //Input Declaration
  input a,b;
  
  //Output Declaration
  output sum,carry;
  
  //Logic
  assign sum = a ^ b;
  assign carry = a && b;
  
endmodule
