`include "test.sv"
`include "interface.sv"

module top;
  
  fs_if pif();
  test tb(pif);
  
  FS f1(.a(pif.a),.b(pif.b),.bin(pif.bin),.difference(pif.difference),.borrow(pif.borrow));
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule
