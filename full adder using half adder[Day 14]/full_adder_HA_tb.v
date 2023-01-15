
module full_adder_HA_tb();
reg x,y,cin;
wire sum,carry;
integer i;

full_adder_HA dut(x,y,cin,sum,carry);
initial 
begin
x=1'b0;
y=1'b0;
cin=1'b0;
end

initial
begin
for(i=0;i<8;i=i+1)
begin
{x,y,cin}=i;
#10;
end
end
initial
$monitor("A=%d  B=%d  c=%d  sum=%d  carry=%d",x,y,cin,sum,carry);
initial #500 $finish();
endmodule
 
