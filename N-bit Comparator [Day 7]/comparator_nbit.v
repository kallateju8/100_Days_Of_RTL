`timescale 1ns / 1ps
module comparator_nbit(a,b,Lesser,Greater,Equal);
parameter n=32;
input [n-1:0]a,b;
output Lesser,Greater,Equal;
reg Lesser=0,Greater=0,Equal=0;
always @ (a,b)
begin
if(a>b)
begin
Lesser=0;Equal=0;Greater=1;
end
else if (a<b)
begin
Lesser=1;Equal=0;Greater=0;
end
else
begin
Lesser=0;Equal=1;Greater=0;
end
end
endmodule
