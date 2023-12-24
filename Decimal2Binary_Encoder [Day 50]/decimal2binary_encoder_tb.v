module decimal2binary_encoder_tb;

    reg [9:0] Decimal;
    wire [3:0] Binary;
   
decimal2binary_encoder dut ( .Decimal(Decimal),  .Binary(Binary));

initial
$monitor("{Decimal}=%b, {Binary}=%b", {Decimal}, {Binary});

initial
begin
        Decimal = 1;
#2      Decimal = 2;
#2	    Decimal = 4;
#2      Decimal = 8;
#2	    Decimal = 16;
#2      Decimal = 32;
#2	    Decimal = 64;
#2      Decimal = 128;
#2	    Decimal = 256;
#2      Decimal = 512;
#2      Decimal = 1024;
end
initial
begin
#1000;
$finish;
end
endmodule
