class packet;
  randc bit [3:0]addr;
  randc bit [3:0]data;
  
  constraint data_range{data<64;}
  constraint addr_range{addr>7 ; addr<70;}
endclass

module inline_constraint_ex;
  initial
    begin
      packet pkt;
      pkt=new();
      repeat(5)
        begin
          pkt.randomize();
          $display("before inline constraint : addr=%0d , data =%0d",pkt.addr,pkt.data);
          
          if(pkt.randomize with {addr==10;})    
             $display("after inline constraint : addr=%0d , data=%0d",pkt.addr,pkt.data);
          $display("randomization sucess");
        end
    end
endmodule
