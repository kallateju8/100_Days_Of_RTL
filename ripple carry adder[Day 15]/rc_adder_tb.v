
module rc_adder_tb();
reg x3,x2,x1,x0,y3,y2,y1,y0,cin0;
wire s3,s2,s1,s0,c3,c2,c1,c0;
integer i;

rc_adder dut(x3,x2,x1,x0,y3,y2,y1,y0,cin0,s3,s2,s1,s0,c3,c2,c1,c0);
initial
begin
{x3,x2,x1,x0}=4'b0000;
{y3,y2,y1,y0}=4'b0000;
cin0=1'b0;
end

initial
begin
for(i=0;i<256;i=i+1)
begin
{x3,x2,x1,x0,y3,y2,y1,y0}=i;
#10;
end
end
initial
$monitor("X=%b %b %b %b  Y=%b %b %b %b   S=%b %b %b %b   c=%b %b %b %b ",x3,x2,x1,x0,y3,y2,y1,y0,s3,s2,s1,s0,c3,c2,c1,c0);
initial #1000 $finish();
endmodule
