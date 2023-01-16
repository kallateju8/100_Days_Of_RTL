
module full_adder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule

module rc_adder(x3,x2,x1,x0,y3,y2,y1,y0,cin0,s3,s2,s1,s0,c3,c2,c1,c0);
input x3,x2,x1,x0,y3,y2,y1,y0,cin0;
output s3,s2,s1,s0,c3,c2,c1,c0;
full_adder FA1(.a(x0),.b(y0),.cin(cin0),.sum(s0),.cout(c0));
full_adder FA2(.a(x1),.b(y1),.cin(c0),.sum(s1),.cout(c1));
full_adder FA3(.a(x2),.b(y2),.cin(c1),.sum(s2),.cout(c2));
full_adder FA4(.a(x3),.b(y3),.cin(c2),.sum(s3),.cout(c3));
endmodule
