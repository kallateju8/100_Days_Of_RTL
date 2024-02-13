package pkg_1;
int no_of_transactions=10;
function pkg_funct();
  $display("pkg_1 : inside pkg_funct,no_of_transactions = %0d",no_of_transactions);
endfunction
endpackage

package pkg_2;
int no_of_transactions=20;
function pkg_funct();
  $display("pkg_2 : inside pkg_funct,no_of_transactions = %0d",no_of_transactions);
endfunction
endpackage

package pkg_3;
int no_of_transactions=30;
function pkg_funct();
  $display("pkg_3 : inside pkg_funct,no_of_transactions = %0d",no_of_transactions);
endfunction
endpackage

module package_example;
  import pkg_1::*;
  import pkg_2::*;
  import pkg_3::*;
  initial
    begin
      pkg_1::pkg_funct();
      pkg_2::pkg_funct();
      pkg_3::pkg_funct();
    end
endmodule
