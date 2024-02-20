class driver;
  mailbox mbx;
  transaction tr;
  virtual segment_if vif;
  
  function new(virtual segment_if vif,mailbox mbx);
    tr=new();
    this.vif=vif;
    this.mbx=mbx;
  endfunction
  
  task run();
    forever
      begin
        mbx.get(tr);
        vif.bcd=tr.bcd;
        #5;
        tr.segment=vif.segment;
        
        $display("segment=%b",tr.segment);
      end
  endtask
endclass
