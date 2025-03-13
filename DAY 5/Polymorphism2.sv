module vir;
  
  class parent;
    virtual function void display();
      $display("parent");
    endfunction
    
  endclass
  
  class child extends parent;
    virtual function void display();
      $display("child");
    endfunction
    
  endclass
  
  class childofchild extends child;
    virtual function void display();
      $display("childofchild");
    endfunction
    
  endclass
  
  parent p;
  child c;
  childofchild cc;
  
  initial begin
    p = new();
    c = new();
    cc = new();
    
    p.display();
    p = c;
    p.display();
    c = cc;
    c.display();
    
    
  end 
  
endmodule
