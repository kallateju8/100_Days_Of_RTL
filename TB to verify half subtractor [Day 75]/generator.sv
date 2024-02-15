class generator;
  transaction trans;
  mailbox mbx;
  
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  
  task run();
    repeat(5)
      begin
        trans=new();
        trans.randomize();
        $display("A=%0d B=%0d",trans.a,trans.b);
        mbx.put(trans);
      end
  endtask
endclass
