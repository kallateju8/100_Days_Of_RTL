`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"

class environment;
  generator gen;
  driver drv;
  mailbox mbx;
  virtual demux_if vif;
  
  function new(virtual demux_if vif);
    this.vif=vif;
    mbx=new();
    gen=new(mbx);
    drv=new(vif,mbx);
  endfunction
  
  task run();
    fork
      gen.run();
      drv.run();
    join
  endtask
endclass
