module union_unpacked;
  
  typedef union {
  	int a;
    bit [7:0]b;
    byte c [1:0];
  } box;
  
  box bx;
  
  initial begin
    
    bx.a =  32'hffee8899 ;
    
    $display(" bx = %h ",bx.a);
    $display(" bx = %h ",bx.b);
    $display(" bx = %h ",bx.c);
    
  end
  
  	
endmodule
