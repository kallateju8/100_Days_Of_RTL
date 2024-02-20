`include "interface.sv"
`include "test.sv"

module top;
  transmission_if pif();
  test tb(pif);
  
  transmissiongate f1(.a(pif.a),.control(pif.control),.y(pif.y));
  
  initial
    begin
      $dumfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
