module constraint_ex;
  
  class con;
    
    rand int a;
    rand int b;
    
    constraint c1 { a < 10 && a > 0 && b < 20 && b > 10; }
    
  endclass
  
  con mem;
  
  initial begin
    
    mem = new();
    mem.randomize();
    
    $display(" a = %0d , b = %0d ",mem.a,mem.b);
    
  end
  
endmodule
