module mux4_1(in,sel,out);
input [3:0]in;
input [1:0]sel;
output reg out;

always@(in,sel,out)
begin
case(sel)
2'b00:out=in[0];
2'b01:out=in[1];
2'b10:out=in[2];
2'b11:out=in[3];
endcase
end
endmodule
