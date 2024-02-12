class transaction;
  rand bit [3:0] din1;
  rand bit [3:0] din2;
endclass

class generator;
  transaction trans;
  mailbox mbx;
  
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  
  task main();
    repeat(10)
      begin
        trans=new();
        assert(trans.randomize) else $display("randomization failed");
        $display("[GEN] : Data sent : din1 : %0d and din2 : %0d",trans.din1,trans.din2);
        mbx.put(trans);
        #10;
      end
  endtask
endclass


class driver;
  transaction trans;
  mailbox mbx;
  
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  
  task main();
    repeat(10)
      begin
        mbx.get(trans);
        $display("[DRV] : data received : din1 : %0d and din2 : %0d",trans.din1,trans.din2); 
        #10;
      end
  endtask
endclass

module tb;
  generator g;
  driver d;
  mailbox mbx;
  initial
    
    begin
      mbx=new();
      g=new(mbx);
      d=new(mbx);
  
  fork
    g.main();
    d.main();
  join
  
    end
  
endmodule
