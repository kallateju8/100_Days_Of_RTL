module mux4_1_tb();
reg [3:0]in;
reg [1:0]sel;
wire out;
integer m,n;

mux4_1 dut(in,sel,out);
task initialize;
begin
{in,sel}=0;
end
endtask

task inputs(input [3:0]i);
begin
in=i;
end
endtask

task select(input [1:0]j);
begin
sel=j;
end
endtask

initial
begin
initialize;
for(m=0;m<4;m=m+1)
begin
select(m);

for(n=0;n<16;n=n+1)
begin
inputs(n);
#10;
end
end
end
initial
$monitor(" select=%b %b inputs =%b %b %b %b output=%b",sel[1],sel[0],in[3],in[2],in[1],in[0],out);
initial #1000 $finish();
endmodule
