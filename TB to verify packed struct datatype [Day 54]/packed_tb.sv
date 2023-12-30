module struct_tb;
  
  typedef struct packed{
    integer student_id;
    int standard;
 	int marks;
  }st_packed_example;
  
  initial
    begin
      st_packed_example class7 = '{17,10,90};
      st_packed_example class8;
      st_packed_example class9 = '{24,9,80};
      
      $display("class7=%p class8=%p class9=%p\n",class7,class8,class9);
       
      class7.standard = 9;
      class7.student_id = 37;
      $display("class7=%p class8=%p class9=%p\n",class7,class8,class9);
      
      class8=class9;
      $display("class7=%p class8=%p class9=%p\n",class7,class8,class9);
    end
endmodule
