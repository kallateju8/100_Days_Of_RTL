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
        $display("D=%b sel=%b",tr.d,tr.sel);
        mbx.put(tr);
      end
  endtask
endclass
