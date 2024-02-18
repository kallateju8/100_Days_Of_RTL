`include "transaction.sv"
class generator;
  transaction tr;
  mailbox mbx;
  
  function new(mailbox mbx);
  this.mbx=mbx;
  endfunction
  
  task run();
    repeat(8)
      begin
        tr=new();
        tr.randomize();
        $display("a=%d b=%d bin=%d",tr.a,tr.b,tr.bin);
        mbx.put(tr);
      end
  endtask
endclass
