
module half_adder(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule

module full_adder_HA(x,y,cin,sum,carry);
input x,y,cin;
output sum,carry;
wire w1,w2,w3;
half_adder HA1(.a(x),.b(y),.s(w1),.c(w2));
half_adder HA2(.a(w1),.b(cin),.s(sum),.c(w3));
or OR1(carry,w3,w2);
endmodule
