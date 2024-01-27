class a;
  int b_var;
  static int x_var;
  
  function static display();
    int a_var;
    a_var++;
    b_var++;
    $display("a_var = %0d , b_var=%0d",a_var,b_var);
  endfunction:display
  
  static function method();
    int y_var;
    y_var++;
    x_var++;
    $display("y_var = %0d , x_var = %0d",y_var,x_var);
   
  endfunction:method
endclass

module m1();
  int i;
  initial
    begin
      a a_obj;
      a b_obj;
      a a_v;
      a b_v;
      
      a_obj=new();
      b_obj=new();
      a_v=new();
      b_v=new();
      
      $display("----------------------------------");
      $display("function static");
      $display("for a_obj: ");
      $display("----------------------------------");
      for(i=0;i<5;i++)
        begin
          a_obj.display();
        end
      
       $display("----------------------------------");
      $display("for b_obj: ");
      $display("----------------------------------");
      for(i=0;i<5;i++)
        begin
          b_obj.display();
        end
      
       $display("---------------------------");
      $display(" Static Function");
      $display("For a_var : ");
       $display("---------------------------");
      for(i=0;i<5;i++)
        begin
          a_v.method();
        end
      
       $display("---------------------------");
      $display("For b_var : ");
       $display("---------------------------");
      for(i=0;i<5;i++)
        begin
          b_v.method();
        end
    end
endmodule
