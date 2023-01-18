
module decoder_tb();
reg a,b,e;
wire d0,d1,d2,d3;
integer i;

decoder dut(a,b,e,d0,d1,d2,d3);
initial
begin
a=1'b0;
b=1'b0;
e=1'b1;
end

initial
begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
end
end

initial
$monitor("inputs  E=%b  A=%b  B=%b  outputs  %b %b %b %b",e,a,b,d0,d1,d2,d3);
initial #200 $finish();
endmodule


