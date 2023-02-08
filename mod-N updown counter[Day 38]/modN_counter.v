`timescale 1ns / 1ps

module modN_counter 
  # (parameter N = 10,
     parameter WIDTH = 4)
  
  ( input   clk,
    input   reset,
	input upordown,
   	output  reg[WIDTH-1:0] count);
 
  always @ (posedge clk )
  begin
    if (reset==1)
			count <= 0;
    
	else 
		if(upordown==1)      //Up Mode is selected
			if (count == N-1) 
				count <= 0;
			else
				count<=count+1;  //increment counter
		
		else                //Down Mode is selected
			if(count==0)
				count<=N-1;
			else
				count<=count-1;    //Decrement the counter
  end
endmodule
