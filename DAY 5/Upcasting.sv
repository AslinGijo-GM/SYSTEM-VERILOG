module upcase;
  
  class parent;
    
    function void display();
      $display(" I AM PARENT ");
    endfunction
    
  endclass
  
  class child extends parent;
    
    function void display();
      $display(" I AM CHILD ");
    endfunction
    
  endclass
  
  parent p;
  child c;  
  
  initial begin
    
    c = new();
    
    $display("before p=a child addr = %d ",c);
    $display("before p=a parent addr = %d ",p);
    
    p = c;
    
    $display("after p=a child addr = %d ",c);
    $display("after p=a parent addr = %d ",p);
    
    p.display();
    c.display();
    
  end
  
endmodule
