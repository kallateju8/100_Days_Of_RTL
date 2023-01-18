
module decoder(a,b,e,d0,d1,d2,d3);
input a,b,e;
output d0,d1,d2,d3;
assign d0=(~a&~b&e);
assign d1=(~a&b&e);
assign d2=(a&~b&e);
assign d3=(a&b&e);
endmodule
