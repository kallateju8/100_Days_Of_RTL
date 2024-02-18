
class driver;
  transaction tr;
  mailbox mbx;
  virtual fs_if vif;
  
  function new(mailbox mbx,virtual fs_if vif);
    
    this.mbx=mbx;
    this.vif=vif;
  endfunction
  
  task run();
    tr=new();
    forever 
      begin
        mbx.get(tr);
        vif.a=tr.a;
        vif.b=tr.b;
        vif.bin=tr.bin;
        #5;
        tr.difference=vif.difference;
        tr.borrow=vif.borrow;
        $display("difference=%d borrow=%d",tr.difference,tr.borrow);
      end
  endtask
endclass
    
    
