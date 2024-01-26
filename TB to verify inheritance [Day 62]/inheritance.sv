class parent_class;
  bit [31:0] addr=32'hff;
  function display();
    $display("[parent] addr=0x%0h",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit[31:0] data=32'h24;
  function display();
    super.display();         //call base class display method
    $display("[child] addr=0x%0h",addr);
    $display("[child] data=%0h",data);
  endfunction
endclass

module inheritance;
  initial
    begin
      parent_class p;
      child_class c;
      p=new();
      c=new();
      c.display();
    end
endmodule
