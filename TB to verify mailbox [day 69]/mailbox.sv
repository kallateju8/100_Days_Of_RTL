module tb();
  mailbox example = new();
  
  initial 
    begin
      bit [3:0]a; 
      for(int i=0;i<10;i++)
        
        begin
         a=$random;
          example.put(a);
          $display("data send = %0d",a);
        end
    end
  
  initial
    begin
      
      forever 
        begin
      bit [3:0]a;
      example.get(a);
      $display("data received = %0d",a);
        end
    end
endmodule
