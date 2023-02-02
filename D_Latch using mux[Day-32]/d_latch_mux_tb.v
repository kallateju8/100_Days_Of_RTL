module dlatch_tb;

	reg d;
	reg clock;

	wire q;

	d_latch dut (.d(d),.clock(clock),.q(q));

	initial 
	begin
		d = 0;
		clock = 0;

	end
	
	always #10 d=~d;
	always #5 clock=~clock;
	
	initial
	begin
	$monitor("D=%b | Clock=%b | Output =%b",d,clock,q);
	#200 $finish;
	end
      
endmodule
