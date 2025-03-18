module constraint_soft;
  
  class con;
    
    rand int a;
    rand int b;
    
    constraint c1 { soft a inside { [1:79] } ; b inside { [6:25] }  ;}
    
  endclass
  
  con mem = new();
  
  initial begin
    
    mem.randomize() with { a == 80 ;};
    $display(" %p ", mem);
    
  end
  
endmodule
