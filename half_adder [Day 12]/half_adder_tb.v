module half_adder_tb();
reg x,y;
wire s,c;
integer i;

half_adder dut(x,y,s,c);

initial
begin
x=1'b0;
y=1'b0;
end

initial 
begin
for(i=0;i<4;i=i+1)
begin
{x,y}=i;
#10;
end
end

initial
$monitor("input A=%b B=%b SUM=%b CARRY=%b",x,y,s,c);

initial #100 $finish();

endmodule
