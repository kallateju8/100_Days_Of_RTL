class transaction;
  bit [31:0] data;
  int start_Addr;
  int end_Addr;
endclass

//Class Declaration for Shallow Copy
class first;  
  int data; 
endclass
 
class second;
  int data2;
  first f1=new(); 
endclass
 

module shlw_copy_tb;
  transaction tr1, tr2;
  second s1, s2;
  initial begin
    tr1 = new();
    tr1.data = 5;
    tr1.start_Addr=2033;
    tr1.end_Addr=3000;
    tr2 = tr1;
     $display("----------------------------------------");
    $display("-------------Object Assignment------------");
    $display("tr1.data = %0h, tr1.start_Addr=%0d, tr1.end_Addr=%0d", tr1.data,tr1.start_Addr,tr1.end_Addr);
     $display("----------------------------------------");
     $display("----------------------------------------");
    $display("tr2.data = %0h, tr2.start_Addr=%0d, tr2.end_Addr=%0d", tr2.data,tr2.start_Addr,tr2.end_Addr);
     $display("----------------------------------------");
    
    tr2.data = 10;
    tr2.start_Addr=2010;
     $display("----------------------------------------");
    $display("tr1.data = %0h, tr1.start_Addr=%0d, tr1.end_Addr=%0d", tr1.data,tr1.start_Addr,tr1.end_Addr);
     $display("----------------------------------------");
     $display("----------------------------------------");
    $display("tr2.data = %0h, tr2.start_Addr=%0d, tr2.end_Addr=%0d", tr2.data,tr2.start_Addr,tr2.end_Addr);
     $display("----------------------------------------");
     
    s1 = new();
    
    s1.data2 = 45;
    
    s2 = new s1;
    
    $display("----------------------------------------");
    $display("------------Shallow Copy----------------");
    $display("Value of s2.data2: %0d", s2.data2);
     $display("----------------------------------------");
    
    s2.data2 = 78;
     $display("----------------------------------------");
    $display("After changing s2.data2");
    
    
    $display("Value of s1.data2: %0d", s1.data2);
     $display("----------------------------------------");
     $display("----------------------------------------");
    
    $display("Value of s2.data2: %0d", s2.data2);
     $display("----------------------------------------");
    
    s2.f1.data = 56;
     $display("----------------------------------------");
    $display("After changing s2.f1.data");
    
    $display("Value of data s1.f1.data: %0d", s1.f1.data);
     $display("----------------------------------------");
      $display("----------------------------------------");
    
    $display("Value of data s2.f2.data: %0d", s2.f1.data);
     $display("----------------------------------------");
   
  end
endmodule
