module full_adder_tb();
reg a,b,cin;
wire sum,cout;
integer i;

full_adder dut(a,b,cin,sum,cout);
initial
begin
a=1'b0;
b=1'b0;
cin=1'b0;
end

initial
begin
for(i=0;i<8;i=i+1)
begin
{a,b,cin}=i;
#10;
end
end

initial 
$monitor("A=%b  B=%b  cin=%b  sum=%b cout=%b",a,b,cin,sum,cout);
initial #100 $finish();
endmodule
