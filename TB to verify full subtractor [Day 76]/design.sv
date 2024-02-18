module FS(a,b,bin,difference,borrow);
  
  input a,b,bin;
  output borrow,difference;
  
  assign difference=a^b^bin;
  assign borrow=(~a&bin) | (~a&b) | (b&bin);
  
endmodule
