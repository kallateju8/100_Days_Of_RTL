class ones;
  rand bit [9:0]value;
  bit[3:0]count;
endclass

module name;
  ones o_h=new;
  initial
    begin
      repeat(8)
        begin
       	 o_h.randomize();
          foreach(o_h.value[i])
            if(o_h.value[i])
          		o_h.count=o_h.count+1;
      			$display("value:%b,\t number of ones=%0d",o_h.value,o_h.count);
          		o_h.count=0;
        end
      
    end
endmodule
