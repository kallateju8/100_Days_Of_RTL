module seven_segment_display(bcd,segment);
  
  input [3:0]bcd;
  output reg [7:0]segment;
  
  always@(bcd)
    begin
      case(bcd)
        	4'b0000 : segment = 8'b11000000;
        	4'b0001 : segment = 8'b11111001;   
       	    4'b0010 : segment = 8'b10100100;   
            4'b0011 : segment = 8'b10110000;   
            4'b0100 : segment = 8'b10011001;   
            4'b0101 : segment = 8'b10010010;   
            4'b0110 : segment = 8'b10000010;  
            4'b0111 : segment = 8'b11111000;   
            4'b1000 : segment = 8'b10000000;   
            4'b1001 : segment = 8'b10010000;
        
        default: segment = 8'b11111111;
      endcase
    end
endmodule
