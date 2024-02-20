`include "environment.sv"

program test(segment_if vif);
  environment env;
  
  initial
    begin
      env=new(vif);
      env.run();
    end
endprogram
