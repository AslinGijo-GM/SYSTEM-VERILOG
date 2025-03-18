module encap;
  
  //int cc;
  
  class parent;
    
    local int a;
    protected int b;
    
    function void adder();
      a = 56;
      $display(" local int a     = %0d " , a);
    endfunction
    
  endclass
  
  class child extends parent;
    
    function void adder();
      b = 32;
      $display(" protected int b = %0d ", b);      
    endfunction
    
  endclass
  
  class add;
    int cc;
    function void adder();
      cc = 27;
      cc = cc + 1;
      $display(" public int c    = %0d ", cc); 
    endfunction
    
  endclass

  parent p = new();
  child c = new();
  add ad = new();
  
  
  initial begin
    
    
    p.adder();
    
    c.adder();
    
    ad.adder();
    
  end  
  
endmodule
