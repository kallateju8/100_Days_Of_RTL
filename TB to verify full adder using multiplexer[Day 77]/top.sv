`include "interface.sv"
`include "test.sv"

module top;
  fulladder_if pif();
  test tb(pif);
  
  fulladder f1(.a(pif.a),.b(pif.b),.cin(pif.cin),.sum(pif.sum),.carry(pif.carry));
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule
