module transmissiongate(a,control,y);
  
  input a,control;
  output y;
  
  wire cbar;
  assign cbar=~control;
  
  nmos n1(y,a,control);
  pmos p1(y,a,cbar);
  
endmodule
