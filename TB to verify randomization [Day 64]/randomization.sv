class packet;
  rand bit[1:0]addr1;
  randc bit[1:0]addr2;
  
  function void post_randomize;
    $display(" addr1 is %b",addr1);
    $display(" addr2 is %b",addr2);
  endfunction
endclass

packet pkt=new();

module rand_methods;
  
  
 initial 
    begin
      if(pkt.addr1.rand_mode())
        begin
          for(int i=0;i<4;i++)
            pkt.randomize();
       end
    end
  
  initial
    begin
      repeat(5)
        begin
          assert(pkt.randomize())
            else
              begin
                $display("randomization failed at %ot",$time);
                $finish();
              end
          $display("value of addr1:%0d and addr2:%0d",pkt.addr1,pkt.addr2);
        end
    end
endmodule
