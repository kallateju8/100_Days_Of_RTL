class driver;
  
  virtual hs_if vif;
  transaction trans;
  mailbox mbx;
  
  function new(virtual hs_if vif,mailbox mbx);
    trans=new();
    this.mbx=mbx;
    this.vif=vif;
  endfunction
  
  task run();
    
    forever
      begin
        mbx.get(trans);
        vif.a=trans.a;
        vif.b=trans.b;
        #5;
        trans.borrow=vif.borrow;
        trans.difference=vif.difference;
        $display("borrow=%0d difference=%0d",trans.borrow,trans.difference);
      end
  endtask
endclass
        
    
