class driver;
  transaction tr;
  mailbox mbx;
  virtual fulladder_if vif;
  
  function new(virtual fulladder_if vif,mailbox mbx);
    tr=new();
    this.vif=vif;
    this.mbx=mbx;
  endfunction
  
  task run();
    forever
      begin
        mbx.get(tr);
        vif.a=tr.a;
        vif.b=tr.b;
        vif.cin=tr.cin;
        #5;
        tr.sum=vif.sum;
        tr.carry=vif.carry;
        
        $display("sum=%d carry=%d",tr.sum,tr.carry);
      end
  endtask
endclass
