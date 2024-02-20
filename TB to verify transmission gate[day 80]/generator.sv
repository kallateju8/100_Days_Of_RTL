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
        $display("a=%b control=%b",tr.a,tr.control);
        mbx.put(tr);
      end
  endtask
endclass
