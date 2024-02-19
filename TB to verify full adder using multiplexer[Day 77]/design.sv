module multiplexer(a,b,s,y);
  input a,b,s;
  output y;
  assign y=(~s&a)|(s&b);
endmodule

module fulladder(a,b,cin,sum,carry);
  input a,b,cin;
  output sum,carry;
  wire w1,w2,w3;
  multiplexer mu1(a,(~a),b,w1);
  multiplexer mu2(cin,(~cin),w1,sum);
  multiplexer mu3(1'b0,w1,cin,w2);
  multiplexer mu4(1'b0,a,b,w3);
  multiplexer mu5(w2,w3,w3,carry);
endmodule
