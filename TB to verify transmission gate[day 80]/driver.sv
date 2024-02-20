class driver;
  transaction tr;
  mailbox mbx;
  virtual transmission_if vif;
  
  function new(virtual transmission_if vif,mailbox mbx);
    tr=new();
    this.mbx=mbx;
    this.vif=vif;
  endfunction
  
  task run();
    forever
      begin
        mbx.get(tr);
        vif.a=tr.a;
        vif.control=tr.control;
        #5;
        tr.y=vif.y;
        
        $display("output =%b",tr.y);
      end
  endtask
endclass
