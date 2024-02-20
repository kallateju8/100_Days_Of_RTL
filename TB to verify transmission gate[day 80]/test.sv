`include "environment.sv"

program test(transmission_if vif);
  environment env;
  
  initial
    begin
      env=new(vif);
      env.run();
    end
endprogram
