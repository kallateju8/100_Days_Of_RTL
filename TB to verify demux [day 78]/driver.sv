class driver;
  transaction tr;
  mailbox mbx;
  virtual demux_if vif;
  
  function new(virtual demux_if vif,mailbox mbx);
    this.vif=vif;
    this.mbx=mbx;
  endfunction
  
  task run();
    forever
      begin
        mbx.get(tr);
        vif.d=tr.d;
        vif.sel=tr.sel;
        #5;
        tr.y=vif.y;
        $display("y=%b",tr.y);
      end
  endtask
endclass
