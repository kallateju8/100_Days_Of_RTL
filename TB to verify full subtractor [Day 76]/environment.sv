`include "generator.sv"
`include "driver.sv"
//`include "transaction.sv"

class environment;
  
  generator gen;
  driver drv;
  mailbox mbx;
  virtual fs_if vif;
  
  function new(virtual fs_if vif);
    this.vif=vif;
    mbx=new();
    gen=new(mbx);
    drv=new(mbx,vif);
  endfunction
  
  task run();
    fork
      gen.run();
      drv.run();
    join
  endtask
endclass
