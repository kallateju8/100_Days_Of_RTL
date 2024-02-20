`include "interface.sv"
`include "test.sv"

module top;
  segment_if pif();
    test tb(pif);
    
    seven_segment_display m1(.bcd(pif.bcd),.segment(pif.segment));
    
    initial 
      begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
      end
    endmodule
