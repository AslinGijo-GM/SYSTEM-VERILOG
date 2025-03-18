module constraint_soft;
  
  class con;
    
    rand int a;
    rand int b;
    
  endclass
  
  con mem = new();
  
  initial begin
    
    mem.randomize() with { a == 80 ; b == 30 ; };
    $display(" %p ", mem);
    
  end
  
endmodule
