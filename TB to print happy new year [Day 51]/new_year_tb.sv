class newyear;
  
  function new();
  endfunction
  
  function void print_newyear();
    $display("HAPPY NEW YEAR\n");
  endfunction
  
endclass

  module newyear_tb();
    newyear n1;
    
    initial
      begin
        n1 = new();
        n1.print_newyear();
        $finish();
      end
  endmodule  
