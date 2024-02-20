class generator;
  
   transaction tr;
  mailbox mbx;
  
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  
  task run();
    repeat(10)
      begin
        tr=new();
        tr.randomize();
        $display("bcd=%b",tr.bcd);
        mbx.put(tr);
      end
  endtask
endclass
  
  
