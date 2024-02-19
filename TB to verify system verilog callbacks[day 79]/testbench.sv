
`include "driver.sv"

class env;
  bit inject_err;
  driver drv;
  err_driver drv_err;
  
  function new();
    drv=new();
    drv_err=new();
  endfunction
  
  task execute;
    if(inject_err)  drv=drv_err;
    
    drv.pkt_sender();
    $display("sending packet = %s",drv.pkt.name());
  endtask
endclass

module callback();
  env env_o;
  initial
    begin
      
      env_o=new();
      env_o.inject_err = 0;
      repeat(5)
        env_o.execute;
      
      env_o=new();
      env_o.inject_err = 1;
      repeat(5)
        env_o.execute;
      
      env_o=new();
      env_o.inject_err = 0;
      repeat(5)
        env_o.execute;
    end
endmodule
